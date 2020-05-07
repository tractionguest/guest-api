/* Constants */
const branchName = danger.github.pr.head.ref;

/* Steps */
// Attach Wrike tickets
const wrikeIds = getUniqueWrikeIds();
if (wrikeIds.length) {
  const mappedIds = wrikeIds.map(id => wrikeLink(id)).join(', ');
  message(`Associated Wrike Tickets:\n${mappedIds}`);
}

// Remind to squash on un-squashed PRs
if (danger.github.commits.length > 1) {
  message(
    `Remember to use the \`Squash and Merge\` button to merge!
    Always remember, your final commit message needs to start with a wrike ticket like, \`[#1234] Your commit message\`.`
  );
}

/* Functions */
function wrikeLink(wrikeId:string) {
  return `<a href='https://www.wrike.com/open.htm?id=${wrikeId}' target="_blank">#${wrikeId}</a>`;
}

function getUniqueWrikeIds() {
  return ['woot'];
  // const wrikeIds = danger.github.commits.reduce((acc, obj) => {
  //     const msg = obj.commit.message;
  //     const wrikeId = msg.match(/^\[\#(\d*)\]/);
  //     if (wrikeId) {
  //       acc.push(wrikeId[1]);
  //     }

  //     return acc;
  //   }, []);

  // return [...new Set(wrikeIds)];
}
