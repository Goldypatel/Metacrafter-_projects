/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.

const nft_V = [];

function mintNFT (name, age, work , exp ) {
    const nft = {                                   
        "o_name" : name,
        "o_age" : age,
        "o_work" : work,
        "o_exp" : exp
}
nft_V.push(nft);
}
console.log("\Nft added to array");

function listNFTs () {
    for (let i = 0; i < nft_V.length; i++) {
        console.log(nft_V[i]);
        
    }   
}

function getTotalSupply() {
    console.log("\nTotal NFTs are : " + nft_V.length);
}

// callign statements
mintNFT("goldy" , "19", "student", "0" );
mintNFT("xxxxx" , "25", "engineer", "5" );
mintNFT("yyyyy" , "50", "docter", "6" );
mintNFT("zzzzz" , "21", "student", "0" );
listNFTs();
getTotalSupply();


