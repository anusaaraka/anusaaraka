;$$$ Modified by Shirisha Manju 25-4-14 Suggested by Chaitanya Sir
;removed 'id-cat ?id proper_noun' 
;Ram is a good boy. 
(defrule ram0
(declare (salience 4800))
(id-root ?id ram)
?mng <-(meaning_to_be_decided ?id)
(id-original_word ?id Ram) ; added by Shirisha Manju 25-4-14 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ram.clp 	ram0   "  ?id "  rAma )" crlf))
)

;@@@ Added by Shirisha Manju 25-4-14 Suggested by Chaitanya Sir
;They used the Ram machine to break the wall. 
(defrule ram1
(declare (salience 4900))
(id-root ?id ram)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(- ?id 1) a|an|the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeMdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ram.clp 	ram1   "  ?id "  BeMdZA )" crlf))
)

;-------------------- Default rules ----------------------------
(defrule ram2
(id-root ?id ram)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ram.clp 	ram2   "  ?id "  kasa )" crlf))
)

;"ram","VT","1.kasanA/BidZanAra/jAnabUJa_kara_xUsarI_gAdZI_se_takarAnA/TUzsanA"
;Do not ram the thread too hard or else it would break.
;The police van was rammed by a smuggler car.
;He rammed his clothes into a suitcase. 
;

;He has hundreds of rams in his cattle farm.
(defrule ram3
(id-root ?id ram)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeMdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ram.clp       ram3   "  ?id "  BeMdZA )" crlf))
)
;"ram","N","1.BeMdZA"
;He has hundreds of rams in his cattle farm.
;--"2.xIvAra_girAne_kI_maSIna"
;They used the Ram machine to break the wall. 
;

