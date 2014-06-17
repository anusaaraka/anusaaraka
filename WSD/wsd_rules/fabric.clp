;_________________________________________________________________________
;@@@ Added by Krithika 26/03/2014
; This is a trend which threatens the very fabric of society.	[OALD] 
; यह एक ऐसी विचारधारा है जो समाज की बुनियादी संरचना के लिए सबसे बड़ा खतरा है .
(defrule fabric1
(declare (salience 5000))
(id-root ?id fabric)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 society)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMracanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fabric.clp 	fabric1  "  ?id "  saMracanA )" crlf))
)
;_________________________________________________________________________
;@@@ Added by Krithika 26/03/2014
; This is a trend which threatens the very fabric of society.	[OALD] 
; यह एक ऐसी विचारधारा है जो समाज की बुनियादी संरचना के लिए सबसे बड़ा खतरा है .
(defrule fabric2
(declare (salience 5000))
(id-root ?id fabric)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 church)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fabric.clp 	fabric2  "  ?id "  DAMca )" crlf))
)
;____________________________________________________________________________________________
;########################Default rules###################################
;@@@ Added by Krithika 26/03/2014
; The fabric in the curtains was light and semitransparent. 	[IITB] 
; पर्दो का कपड़ा हल्का और थोड़ा पारदर्शी था . (हल्की किस्म का ) 
(defrule fabric0
(declare (salience 5000))
(id-root ?id fabric)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fabric.clp 	fabric0   "  ?id "  kapadZA )" crlf))
)
;##########################Additional examples#############################
; The whole fabric of society was torn apart by the war. 
; The fabric has been treated to repel water.
; I prefer cotton fabric.
