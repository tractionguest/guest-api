const { message, danger } = require("danger");

/* Constants */
const branchName = danger.github.pr.head.ref;
const docsLink = `https://tractionguest.stoplight.io/docs/guest-api/branches/${branchName}/bundled_openapi.json`;
const isDevelopBranch = branchName == 'develop';
const isFeatureBranch = !isDevelopBranch && branchName != 'master';
const versioningLabels = ['patch', 'minor', 'major'];
const hasVersionLabel = getPrLabels().some(label => versioningLabels.includes(label));
const versionLabelList = `\`${versioningLabels.slice(0, versioningLabels.length -1).join('`, `')}\`, or \`${versioningLabels.slice(-1)}\``;

/* Steps */
message(`<a href="${docsLink}" target="_blank">View docs for this page</a> <em>(You'll need to have access to see this version of the docs)</em>`);

// Version bump reminder
if (isDevelopBranch) {
  warn(`Be sure to bump the version number appropriately before merging!`);
}

// Enforce version labeling
if (isFeatureBranch && !hasVersionLabel) {
  fail(`You need to specify a versioning label! :raised_hand:
  Use one of ${versionLabelList} to indicate how much the API version should be bumped for your work.`);
} else if (isFeatureBranch && hasVersionLabel) {
  message(`Nice! You've specified a versioning label :+1:`);
}

// Remind to squash on un-squashed PRs
if (danger.github.commits.length > 1) {
  message(
    `Remember to use the \`Squash and Merge\` button to merge for single PRs!
    Always remember, your final commit message needs to start with a wrike ticket like, \`[#1234] Your commit message\`.`
  );
}

/* Functions */
function getPrLabels() {
  const labelHash = danger.github.pr.labels;
  const labelLength = Object.keys(labelHash).length;
  const indexedArray = Array.from(Array(labelLength), (_, i) => i);

  return indexedArray.map(labelKey => labelHash[labelKey]['name']);
}
