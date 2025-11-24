// Extension entry point
const vscode = require('vscode');

/**
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
   console.log('LSPT Language Support extension is now active!');

   // Register any additional commands or providers here if needed
   // For now, the extension works purely through declarative contributions
}

function deactivate() { }

module.exports = {
   activate,
   deactivate
}
