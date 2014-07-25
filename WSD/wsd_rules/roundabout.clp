
;$$$ Modified mng from 'golamola' to 'GumAvaxAra' by Roja 24-07-14 (Suggested by Chaitanya Sir and Soma mam)
;He took a roundabout route to reach the theatre.
;usane nAtyaSAlA jAne ke lie GumAvaxAra rAswA liyA [translation Suggested by Chaitanya Sir and Soma mam.)
;"roundabout","Adj","1.golamola"
(defrule roundabout0
(declare (salience 5000))
(id-root ?id roundabout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAvaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roundabout.clp 	roundabout0   "  ?id "  GumAvaxAra )" crlf))
)

;$$$ Modified mng from 'merI-go-rAunda' to 'golacakkara' by Roja 24-07-14 (Suggested by Chaitanya Sir and Soma mam)
(defrule roundabout1
(declare (salience 4900))
(id-root ?id roundabout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golacakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roundabout.clp 	roundabout1   "  ?id "  golacakkara )" crlf))
)

;"roundabout","N","1.merI-go-rAunda"
