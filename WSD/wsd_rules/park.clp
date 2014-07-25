
(defrule park0
(declare (salience 5000))
(id-root ?id park)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id parking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gAdZI_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  park.clp  	park0   "  ?id "  gAdZI_sWAna )" crlf))
)

;"parking","N","1.gAdZI sWAna"
;There is no parking between 1 P.M. to 6 P.M.
;
(defrule park1
(declare (salience 4900))
(id-root ?id park)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  park.clp 	park1   "  ?id "  uxyAna )" crlf))
)

;"park","N","1.uxyAna"
;There is a big park in our colony.
;

;$$$ Modified meaning by Sonam Gupta MTech IT Banasthali 31-12-2013 (from gAdZI_KadA_kara to KadA_kara)
;Where did you park the car I can not remember.
;आपने गाडी कहाँ खडी की मैं याद नहीं कर पा रहा हूँ . 
(defrule park2
(declare (salience 4800))
(id-root ?id park)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  park.clp 	park2   "  ?id "  gAdZI_KadA_kara )" crlf))
)

;"park","V","1.gAdZI_KadA_karanA"
;Park the car under the tree.
;
