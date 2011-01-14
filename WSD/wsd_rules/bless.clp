
(defrule bless0
(declare (salience 5000))
(id-root ?id bless)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id blessing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ASIrvAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bless.clp  	bless0   "  ?id "  ASIrvAxa )" crlf))
)

;"blessing","N","1.ASIrvAxa"
;He gave the project his blessing
;Enjoy the blessings of peace
;
(defrule bless1
(declare (salience 4900))
(id-root ?id bless)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id blessed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAgyavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bless.clp  	bless1   "  ?id "  BAgyavAna )" crlf))
)

;"blessed","Adj","1.BAgyavAna"
;Our blessed land
;A blessed time
;Blessed with a strong healthy body
;
;
(defrule bless2
(declare (salience 4800))
(id-root ?id bless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASIrvAxa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bless.clp 	bless2   "  ?id "  ASIrvAxa_xe )" crlf))
)

;"bless","VT","1.ASIrvAxa_xenA"
;The dying man blessed his son
;
;
