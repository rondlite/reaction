import en from "./en.json";
import pt from "./pt.json";
import nl from "./nl.json";
//
// we want all the files in individual
// imports for easier handling by
// automated translation software
//
export default {
  translations: [
    ...en,
    ...pt,
    ...nl,
  ]
};
