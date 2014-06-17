
;$$$ Modified by Prachi Rathore[15-3-14]
;salience reduced from 5000 to 200
;Modified by Meena(24.6.10)
;The labour was with the Union leader on this issue . 
(defrule issue0
(declare (salience 200))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue0   "  ?id "  viRaya )" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;A weak trembling sound issued from his lips.[oald]
;नाजुक कम्पन ध्वनि  उसके ओंठ से निकली .  
(defrule issue1
(declare (salience 5500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue1   "  ?id "  nikala )" crlf))
)


;@@@ Added by Prachi Rathore[15-3-14]
;  
(defrule issue2
(declare (salience 500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue2   "  ?id "  jArI_kara )" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
 ;He died without issue.[oald]
;वह बिना संतान के मर गया
(defrule issue3
(declare (salience 5500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-without_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue3   "  ?id "  saMwAna )" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;  We issue a monthly newsletter.[oald]
;हम माहवार एक प्रकार के समाचार पत्र को प्रकाशित करते हैं . 
(defrule issue4
(declare (salience 5500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 newsletter|magazine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue4   "  ?id "  prakASiwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;  
(defrule issue5
(declare (salience 500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue5   "  ?id "  viRaya )" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;Issue of the water from the top.[shiksharthi-kosh]
;  सर्वोच्च स्थान से पानी का निकास . 
(defrule issue6
(declare (salience 5000))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 water|document|stamp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue6   "  ?id "  nikAsa)" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;  You're just avoiding the issue. [oald]
;आप सम्स्या को टाल रहे हैं . 
(defrule issue7
(declare (salience 4500))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue7   "  ?id "  samasyA)" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;the issue of blankets to the refugees.[oald]
;शरणार्थियों को कम्बलों का वितरण . 
(defrule issue8
(declare (salience 5000))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 blanket)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viwaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue8   "  ?id "  viwaraNa)" crlf))
)

;@@@ Added by Prachi Rathore[15-3-14]
;the issue of a joint statement by the French and German foreign ministers.[oald]
;फ्रेन्च और जर्मन विदेशी मन्त्री के द्वारा एक संयुक्त बयान  का निर्णय . 
(defrule issue9
(declare (salience 5000))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 statement)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue9   "  ?id "  nirNaya)" crlf))
)
