
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;He was boiling with rage.[oald]
;वह गुस्से से आग बबुला हो रहा था
(defrule boil3
(declare (salience 3000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
;(id-word ?id1 rage|anger);uncomment this line if any conflict is found
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga_babulA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil3   "  ?id "  Aga_babulA_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;She wanted to give vent to the fury boiling within her.[oald]
;वह अपने अंदर भड़कते हुये गुस्से को बाहर निकालना चाहती थी
(defrule boil4
(declare (salience 3000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
(id-word ?id1 fury|anger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil4  "  ?id "  BadZaka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;The milk is boiling over.[oald]
;दूध उफन रहा है
(defrule boil5
(declare (salience 3000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  uPana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " boil.clp 	boil5  "  ?id "  " ?id1 "  uPana )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;Racial tension finally boiled over in the inner city riots.[oald]
;आखिरकार प्रजातीय तनाव भीतरी शहर के दङ्गों में आपे से बाहर हुए . 
(defrule boil6
(declare (salience 4000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
(kriyA-subject  ?id ?sub)
(id-root ?sub tension|emotion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Ape_se_bAhara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " boil.clp 	boil6  "  ?id "  " ?id1 "  Ape_se_bAhara_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;I could feel anger boiling up inside me.[oald]
;मैं अपने अंदर गुस्सा भड़कता हुआ महसूस कर सका
(defrule boil7
(declare (salience 4000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?sub)
(id-root ?sub anger)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " boil.clp 	boil7  "  ?id "  " ?id1 "  BadZaka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;She boiled up a large pan of water.[oald]
;उसने पानी का एक बड़ा पतीला उबाला
(defrule boil8
(declare (salience 3000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ubAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " boil.clp 	boil8  "  ?id "  " ?id1 "  ubAlA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;He has a boil on his cheek.[Shiksharthi]
;उसके गाल पर फोड़ा है
(defrule boil9
(declare (salience 3000))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri have|be)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil9   "  ?id "  PodA )" crlf))
)



;*********************DEFAULT RULE*************************

(defrule boil0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil0   "  ?id "  ubAla )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;Added 'kriyA-object' relation
(defrule boil1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil1   "  ?id "  ubAla )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;The water boiles.[shiksharti]
;पानी उबलता है
;Eggs have boiled.[shiksharthi]
;अंडे उबल गये हैं
(defrule boil2
(declare (salience 0))
(id-root ?id boil)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boil.clp 	boil2   "  ?id "  ubala )" crlf))
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

;He was boiling with rage.
;She wanted to give vent to the fury boiling within her.
;The original speech I had written got boiled down to about ten minutes.
;The milk is boiling over.
;Racial tension finally boiled over in the inner city riots.
;I could feel anger boiling up inside me.
;Anger suddenly boiled up in him.
;She boiled up a large pan of water.
;He has a boil on his cheek.
;Bring the water to the boil, then add the pasta. 
;Let the liquid come to the boil and then reduce the heat.

