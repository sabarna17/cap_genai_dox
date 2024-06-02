using { genai_dox_recipe as my } from '../db/schema';

@path : '/service/genai_dox_recipe'
service genai_dox_recipe_srv 
{
    @odata.draft.enabled
    entity Recipe as projection on my.Recipe;
    entity RecipeIngredients as projection on my.RecipeIngredients;
}

//capmchatpdfService
// annotate capmchatpdfService with @requires :
// [
//     'authenticated-user'
// ];

// annotate capmchatpdfService.Recipe with {
//   pdf @capchatpdf;
// };