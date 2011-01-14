
(defrule hunch0
(declare (salience 5000))
(id-root ?id hunch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hunched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JukAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hunch.clp  	hunch0   "  ?id "  JukAyA )" crlf))
)

;"hunched","Adj","1.JukAyA"
;vaha" hunched " kulI saxA kAma karawA rahawA hE.
;
(defrule hunch1
(declare (salience 4900))
(id-root ?id hunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwarjFAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunch.clp 	hunch1   "  ?id "  aMwarjFAna )" crlf))
)

;"hunch","N","1.aMwarjFAna"
;muJe 'hunch'hE ki cora Gara ke anxara GusA hE.
;
(defrule hunch2
(declare (salience 4800))
(id-root ?id hunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunch.clp 	hunch2   "  ?id "  JukA )" crlf))
)

;"hunch","V","1.JukAnA"
;rItA paDZane ke lie Age'hunch'kiyA.
;
