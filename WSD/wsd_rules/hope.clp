
(defrule hope0
(declare (salience 5000))
(id-root ?id hope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hope.clp 	hope0   "  ?id "  ASA )" crlf))
)

(defrule hope1
(declare (salience 4900))
(id-root ?id hope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hope.clp 	hope1   "  ?id "  ASA_kara )" crlf))
)

;"hope","V","1.ASA karanA"
;BUkaMpa ke malave meM xabe logoM ke jIviwa bacane kI 'hope'(ASA karanA)vyarWa hE.
;
;LEVEL 
;
;
;Headword : hope
;
;Examples --
;
;---ASA
;I hope he will finish the work.
;muJe ASA hE ki vaha kAma pUrA kara xegA. 
;
;I hope for the best results from you.
;muJe wumase acCe prawiPala kI ASA hEM.
;she has hopes of winning.
;use jIwane kI ASA hE.
;
;----BarosA
;He hopes that he will get that job.
;use BarosA hE ki use vaha nOkarI milegI.<--ASA
;
;----prawIkRA
;We haven't heard from him for weeks,but we're still hoping for a letter.
;kuCa haPwoM se usase koI Kabara nahIM hEM Pira BI hama pawra kI pAne kI prawIkRA kara rahe hEM.<--ASA
;
;
;sUwra : ASA`
;
;
