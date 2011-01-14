
(defrule boil0
(declare (salience 5000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil0   "  ?id "  ubAla )" crlf))
)

(defrule boil1
(declare (salience 4900))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil1   "  ?id "  ubAla )" crlf))
)

;"boil","VT","1.ubAlanA"
;Boil potatoes
;Boil this liquid until it evaporates
;
;LEVEL 
;Headword : boil
;
;Examples --
;
;"boil","N","1.PaPolA"
;He has a boil on his back.
;usakI pITa meM eka PaPolA hE
;--"2.ubAla"
;The brought to water to a boil
;mEM pAnI ko ubAla(ne ke binxu) waka le AyA.
;
;"boil","VI","1.ubalanA"
;Water boils at 100 degrees Celsius
;pAnI 100 digrI para ubalawA hE.
;
;"boil","VT","1.ubAlanA"
;Boil potatoes
;AlU ubAlo
;Boil this liquid until it evaporates
;isa xravya ko waba waka ubAlo jaba waka yaha vARpa bana kara udZa na jAe.
;
;
;sUwra : PaPolA[<ubAla]
