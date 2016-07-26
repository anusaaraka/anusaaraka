
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

;@@@ Added by Pramila(BU) on 12-02-2014
;She has an eye for fresh talent.  [old clp]
;उसे नई प्रतिभाओं की पहचान है.
(defrule eye1
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-word =(- ?id 1) an)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1)  pahacAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eye.clp	eye1  " ?id " " ( - ?id 1)  " pahacAna  )" crlf))
)

;@@@ Added by Pramila(BU) on 12-02-2014
;He tried to catch her eye.  [old clp]
;उसने उसका ध्यान आकर्षित करने का प्रयास किया.
(defrule eye2
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?kri)
(id-root ?kri catch)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  eye.clp  	eye2   "  ?id "  XyAna )" crlf))
)

;@@@ Added by Pramila(BU) on 12-02-2014
;He was eyeing the cake.  [old clp]
;वह केक पर नज़र गड़ाए हुए था.
;I could see her eyeing my lunch.       ;cald
;मैं उसे अपने दोपहर के भोजन पर नज़र गड़ाए हुए देख सकता था.
(defrule eye3
(declare (salience 5000))
(id-word ?id eyeing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id najZara_gadZAe_hue))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  eye.clp  	eye3   "  ?id "  najZara_gadZAe_hue )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  eye.clp      eye3  "  ?id " para )" crlf))
)


;@@@ Added by Pramila(BU) on 12-02-2014
;All eyes were on him as he walked on to the stage.   ;oald
;जैसे ही वह मंच पर गया सभी की नज़रे उस पर थी.
(defrule eye4
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?kri ?id)
(kriyA-on_saMbanXI  ?kri ?id1)
(id-root =(- ?id 1) all)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1)  saBI_kI_najZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eye.clp	eye4  "?id " " ( - ?id 1)  " saBI_kI_najZara  )" crlf))
)


;@@@ Added by Pramila(BU) on 12-02-2014
;He looked at the design with the eye of an engineer.   ;oald
;उन्होंने एक इंजीनियर की दृष्टि से डिजाइन को देखा.
(defrule eye5
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?kri ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xqRti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  eye.clp  	eye5   "  ?id "  xqRti )" crlf))
)

;@@@ Added by Pramila(BU) on 12-02-2014
;It fastens with a hook and eye.   ;oald
;यह हुक और फंदे से लगता है.
(defrule eye6
(declare (salience 5000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?kri ?id1)
(conjunction-components  ?id2 ?id1 ?id)
(id-root ?id1 hook)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  eye.clp  	eye6   "  ?id "  PaMxA )" crlf))
)

;Added by Aditya and Hardik(17.7.13),IIT(BHU)
;You must keep an eye on the child.
(defrule eye7
(declare (salience 5100))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id eye)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) on)
(id-word =(- ?id 2) keep)
(id-word =(- ?id 1) an)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1)  najZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eye.clp	eye7  " ?id " " ( - ?id 1)  " najZara  )" crlf))
)

;@@@ Added by Pramila(BU) on 12-02-2014
;They eyed us with alarm.   ;cald
;उसने मुझे शंका से देखा.
(defrule eye8
(declare (salience 4000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eye.clp 	eye8   "  ?id "  xeKa )" crlf))
)

(defrule eye9
(declare (salience 4000))
(id-root ?id eye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eye.clp 	eye9   "  ?id "  AzKa )" crlf))
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


