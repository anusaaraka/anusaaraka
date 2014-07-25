;@@@ Added by jagriti(4.2.2014)
;A part of the road is sinking.[rajpal]
;सडक का एक भाग धंस रहा है . 
(defrule sink0
(declare (salience 5000))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
(id-root ?id2 road|building|ground)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XaMsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink0   "  ?id "  XaMsa )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;His voice sank into a whisper.[oald]
;उसकी आवाज मंद पडकर फुसफुसाहट में बदल गयी . 
(defrule sink1
(declare (salience 4900))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMxa_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink1   "  ?id "  maMxa_padZa )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;The wounded soldier sank (= fell) to the ground.[cambridge dict]
;घायल हुआ सैनिक जमीन पर गिरा . 
(defrule sink3
(declare (salience 4700))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1) 
(id-root ?id1 floor|ground)
(not(kriyA-object ?id ?)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink3   "  ?id "  gira )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;I sank into an armchair.[oald]
;मैं एक आरामकुर्सी में बैठा . 
(defrule sink4
(declare (salience 4600))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1) 
(id-root ?id1 armchair|chair|seat)
(not(kriyA-object ?id ?)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink4   "  ?id "  bETa )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;To sink a well/shaft/mine.[oald]
;They sank a well in the field.[rajpal]
;उन्होंने क्षेत्र में कुँआ खोदा . 
(defrule sink5
(declare (salience 4500))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1) 
(id-root ?id1 well|shaft|mine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink5   "  ?id "  Koxa )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;The water in the river is sinking.[rajpal]
;पानी नदी में घट रहा है . 
;The price of dollar is sinking.[rajpal]
;डॉलर का मूल्य घट रहा है . 
(defrule sink6
(declare (salience 4400))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1) 
(id-root ?id1 price|water)
(not(kriyA-object ?id ?)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink6   "  ?id "  Gata )" crlf))
)

;@@@ Added by jagriti(4.2.2014)
;He sank his teeth into the apple.[rajpal]
;उसने सेब के अंदर अपने दाँत धँसा दिए. 
(defrule sink7
(declare (salience 4300))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?) 
(kriyA-object ?id ?id2)
(id-root ?id2 tooth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XaMsA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink7   "  ?id "  XaMsA_xe )" crlf))
)

;"sunken","Adj","1.jalamagna"
;The squa divers had discovered a sunker ship on Friday.
;
(defrule sink9
(declare (salience 4000))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sunken )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jalamagna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sink.clp  	sink9  "  ?id "  jalamagna )" crlf))
)
;.....Default Rule....
(defrule sink10
(declare (salience 100))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink10   "  ?id "  dUba )" crlf))
)

(defrule sink11
(declare (salience 100))
(id-root ?id sink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hOxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sink.clp 	sink11   "  ?id "  hOxI )" crlf))
)

;"sink","N","1.hOxI"
;Utensils are washed in the kitchen sink.
;
;
