
(defrule desperate0
(declare (salience 5000))
(id-root ?id desperate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desperate.clp 	desperate0   "  ?id "  nirASa )" crlf))
)

(defrule desperate1
(declare (salience 4900))
(id-root ?id desperate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desperate.clp 	desperate1   "  ?id "  nirASa )" crlf))
)

;"desperate","Adj","1.nirASa"
;They prey on the hopes of the desperate
;He was  a desperate criminal in reality.
;He  made a last desperate attempt to reach the climber
;
;
;LEVEL 
;Headword : desperate
;
;Examples --
;
;"desperate","Adj","1.nirASa"
;They prey on the hopes of the desperate.
;ve nirASa logoM kI ASAoM ko lUtawe hEM
;He was a desperate criminal in reality.
;saccAI yaha hE ki vaha eka nirASonmawwa aparAXI WA.
;He  made a last desperate attempt to reach the terrace.
;Cawa para pahuzcane kA usane eka AKirI nirASApUrNa prayAsa kiyA
;
;
;sUwra : nirASa`
