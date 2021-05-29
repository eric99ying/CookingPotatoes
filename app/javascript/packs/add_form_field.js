// We keep track of the number of instructions present to allow for steps to be numbered
var numInstructionFields = 1;

const addFormField = () => {
    const createButton = document.getElementById("addInstructionBtn");

    createButton.addEventListener("click", () => {

        const lastId = document.querySelector('#fieldsetContainer').lastElementChild.id;

        const newId = parseInt(lastId, 10) + 1;

        const newFieldset = document.getElementById('1').outerHTML.replaceAll(/1/g,newId);

        document.querySelector("#fieldsetContainer").insertAdjacentHTML(
            "beforeend", newFieldset
        );    

    });
}

const getNumInstructionFields = () => {
    return numInstructionFields
}

export { addFormField }