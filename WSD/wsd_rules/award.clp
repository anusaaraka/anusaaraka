
(defrule award0
(declare (salience 5000))
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award0   "  ?id "  puraskAra )" crlf))
)

;"award","N","1.puraskAra"
;Ram && Shyam received an award for their excellent performance.
;rAma Ora SyAma ko apane acCe praxarSana ke liye puraskAra milA.
;--"2.anuxAna"
;Ram has received an award from the University funds.
;rAma ko viSvavixyAlaya koRa se anuxAna milA hE.
;--"3.xaMda"
;The judge has pronounced an award of Rs.1000/- as damages. 
;jaja ne usapara jurmAne ke wOra para 1000 ru ke xaMda kI GoRaNA kI hE.
;


;Commented by Sukhada and Dipti ma'm on 19-08-11. Ex. California's Glendale Federal Bank awarded its $12 million to $15 million account to the Los Angeles office of Omnicom Group's BBDO agency.
;(defrule award1
;(declare (salience 4900))
;(id-root ?id award)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-subject ?id ?sub)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id puraskAra_xe))
;(assert (kriyA_id-subject_viBakwi ?id ko))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp     award1   "  ?id "  puraskAra_xe )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  award.clp      award1   "  ?id "  ko )" crlf))
;)
;
(defrule award2
(declare (salience 4800))
(id-root ?id award)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraskAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  award.clp 	award2   "  ?id "  puraskAra_xe )" crlf))
)

;"award","VT","1.puraskAra_xenA"
;The Jury awarded the best film title to Shyam Benegal's film.
;jUrI ne SyAma benegala kI Pilma ko sarvowwama Pilma kA puraskAra_xene kA nirNaya kiyA.
;
