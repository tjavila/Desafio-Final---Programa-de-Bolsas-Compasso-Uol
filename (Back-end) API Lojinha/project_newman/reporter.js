const newman = require('newman');
newman.run({
    collection: 'https://www.getpostman.com/collections/46e00b37c7e2b50d52bc', // Collection URL from a public link or the Postman API can also be used    
    //collection do link acima é com todas as rotas
    //https://www.getpostman.com/collections/b4f1a807c4c6af4fdcdf para coleção apenas com caminho feliz
    environment: 'Ambiente.postman_environment.json',
    reporters: ['htmlextra'],
    iterationCount: 1,
    reporter: {
        htmlextra: {
            // export: './report.html',
            template: './portugues-template.hbs',
            // logs: true,            
            showOnlyFails: false,            
            // noSyntaxHighlighting: true,            
            // testPaging: true,            
            // browserTitle: "My Newman report",            
            title: "Lojinha API Report",            
            titleSize: 5,            
            // omitHeaders: true,            
            skipHeaders: "Authorization",            
            // omitRequestBodies: true,            
            // omitResponseBodies: true,            
            // hideRequestBody: ["Login"],            
            // hideResponseBody: ["Auth Request"],            
            // showEnvironmentData: true,            
            // skipEnvironmentVars: ["API_KEY"],            
            // showGlobalData: true,            
            // skipGlobalVars: ["API_TOKEN"],            
            // skipSensitiveData: true,            
            // showMarkdownLinks: true,            
            // showFolderDescription: true,            
            // timezone: "Australia/Sydney",            
            // skipFolders: "folder name with space,folderWithoutSpace",            
            // skipRequests: "request name with space,requestNameWithoutSpace"        
        }
    }
});