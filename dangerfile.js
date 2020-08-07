import spellcheck from 'danger-plugin-spellcheck';
import { fail } from 'danger';

/* Constants */
const branchName = danger.github.pr.head.ref;
const wrikeIds = getUniqueWrikeIds();
const docsLink = `https://stoplight.io/p/docs/gh/tractionguest/guest-api/openapi.yml?srn=gh/tractionguest/guest-api/openapi.yml&group=${branchName}`;
const isDevelopBranch = branchName == 'develop';
const versioningLabels = ['patch', 'minor', 'major'];
const hasVersionLabel = danger.github.pr.labels.some(label => versioningLabels.includes(label));

/* Steps */
message(`<a href="${docsLink}" target=_blank>View docs for this page</a>`);

// Attach Wrike tickets
if (wrikeIds.length) {
  const mappedIds = wrikeIds.map(id => wrikeLink(id)).join(', ');
  message(`Associated Wrike Tickets:\n${mappedIds}`);
} else {
  warn(
    `You don't seem to have any wrike tickets for this PR!
    You need to add your wrike ticket to one of your commits, e.g., \`[#1234] Your commit message\``
  );
}

if (!(isDevelopBranch || hasVersionLabel)) {
  fail(`You need to specify a versioning label from one of \`${versioningLabels.join("`, `")}\`!`);
}

// Remind to squash on un-squashed PRs
if (danger.github.commits.length > 1) {
  message(
    `Remember to use the \`Squash and Merge\` button to merge for single PRs!
    Always remember, your final commit message needs to start with a wrike ticket like, \`[#1234] Your commit message\`.`
  );
}

/* Functions */
function wrikeLink(wrikeId) {
  return `<a href='https://www.wrike.com/open.htm?id=${wrikeId}' target="_blank">#${wrikeId}</a>`;
}

function getUniqueWrikeIds() {
  const commits = danger.github.commits;
  const wrikeIds = commits.reduce((acc, obj) => {
      const msg = obj.commit.message;
      const wrikeId = msg.match(/^\[\#(\d*)\]/);
      if (wrikeId) {
        acc.push(wrikeId[1]);
      }

      return acc;
    }, []);

  return wrikeIds;
}
