
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-march-2014
;He baited the trap with a piece of meat.[oald]
;उसने जाल पर मीट के टुकड़े का चारा लगाया
(defrule bait2
(declare (salience 0))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 trap)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cArA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait2   "  ?id "  cArA_lagA )" crlf))
)

;**********************DEFAULT RULES**********************

(defrule bait0
(declare (salience 5000))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait0   "  ?id "  cArA )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-march-2014
;The soldiers remained calm even though the crowd was baiting them.[oald]
;सैनिक शान्त रहे यद्यपि भीड उनको परेशान कर रही थी . 
;changed the meaning from 'sawA' to 'pareSAna_kara'
;"bait","N","1.cArA"
;Wet flour is like a bait for fishes.
;The Intelligence agency used her as a bait to trap the spies.
;
(defrule bait1
(declare (salience 4900))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait1   "  ?id "  pareSAna_kara )" crlf))
)

;note:removed rule 'bait2' as it was similar to rule 'bait1'



;"bait","VT","1.sawAnA"
;The hunters baited the bears with the dogs.
;--"2.cArA_lagAnA"
;The fisherman baited the hook with a worm for the fish.
;--"3.cArA_dAlanA"
;They baited the horses with the hey.
;
