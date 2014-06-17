
(defrule honour0
(declare (salience 5000))
(id-root ?id honour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honour.clp 	honour0   "  ?id "  sammAna )" crlf))
)

;"honour","N","1.sammAna"
;apane se badZe saBI logo kA'honour'mAna sammAna karanA cAhiye.
;
(defrule honour1
(declare (salience 4900))
(id-root ?id honour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honour.clp 	honour1   "  ?id "  sammAna_kara )" crlf))
)

;"honour","V","1.sammAna_karanA"
;mEM apane saBI mehamAnoM kA 'honoured'(sammAnakarawA) hUz.
;


;@@@ Added by Prachi Rathore[27-3-14]
;Rajesh Gavre, the President of the MNPA teachers association, honoured the school by presenting the award.
;मनपा शिक्षक संघ के अध्यक्ष राजेश गवरे ने स्कूल को भेंट देकर सराहना की।
(defrule honour2
(declare (salience 5000))
(id-root ?id honour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 school)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarAhanA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honour.clp 	honour2   "  ?id "  sarAhanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  honour.clp 	honour2     "  ?id "  kI )" crlf))
)
