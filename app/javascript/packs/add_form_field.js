// JS function that attaches listeners to the add instruction and add ingredient buttons
const addFormField = () => {
    // Add instruction
    const createInstructionButton = document.getElementById("addInstructionBtn");

    createInstructionButton.addEventListener("click", () => {

        const lastId = document.querySelector('#fieldsetContainerC').lastElementChild.id.substring(1);

        const newId = parseInt(lastId, 10) + 1;

        const newFieldset = document.getElementById('c1').outerHTML.replaceAll(/1/g,newId).replaceAll(/0/g, newId-1);

        document.querySelector("#fieldsetContainerC").insertAdjacentHTML(
            "beforeend", newFieldset
        );    

    });

    // Add ingredient
    const createIngredientButton = document.getElementById("addIngredientBtn");

    createIngredientButton.addEventListener("click", () => {

        const lastId = document.querySelector('#fieldsetContainerB').lastElementChild.id.substring(1);

        const newId = parseInt(lastId, 10) + 1;

        const newFieldset = document.getElementById('b1').outerHTML.replaceAll(/1/g,newId).replaceAll(/0/g, newId-1);

        document.querySelector("#fieldsetContainerB").insertAdjacentHTML(
            "beforeend", newFieldset
        );    

    });
}


export { addFormField }