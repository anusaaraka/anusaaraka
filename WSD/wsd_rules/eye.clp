
(defrule eye0
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id eyed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AzKovAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  eye.clp  	eye0   "  ?id "  AzKovAlA )" crlf))
)

;"eyed","Adj","1.AzKovAlA"
(defrule eye1
(declare (salience 4900))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eye.clp 	eye1   "  ?id "  AzKa )" crlf))
)

;default_sense && category=noun	AzKa	0
;"eye","N","1.AzKa"
;Her eyes are beautiful.
;--"2.najZara"
;She has an eye for fresh talent
;--"3.XyAna"
;He tried to catch her eye
;
;LEVEL 
;Headword : eye
;
;Examples --
;
;"eye","N","1.AzKa"
;Her eyes are beautiful.
;usakI AzKe sunxara hE.
;--2.xqRti"
;She has an eye for fresh talent.
;usake pAsa nayI prawiBAo ko pahacAnane kI xqRti hE.
;--"3.XyAna"
;Hari tried to catch her eye.
;harine usakA XyAna AkarRiwa karane kI koSiSa kI.
;
;"eye","V","1.najZareM_gadZAnA"
;He was eyeing the cake.
;vaha keke para najZareM gadZAe WA.
;
;
;sUwra : xqRti^AzKa
;
