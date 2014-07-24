
(defrule patch0
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " patch.clp	patch0  "  ?id "  " ?id1 "  nipatA  )" crlf))
)



;Added by Meena(1.6.11)
;She was found crying in a patch of nettles.
(defrule patch1
(declare (salience 4900))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 nettle|vegetable|cabbage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BU_KaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp     patch1   "  ?id "  BU_KaMda )" crlf))
)


;Salience reduced by Meena(1.6.11)
;They patched it up after a long discussion.
;lambI bahasa ke bAxa unhone (mAmalA) nipatA xiyA
(defrule patch2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch2   "  ?id "  tukadZA )" crlf))
)



(defrule patch3
(declare (salience 4800))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch3   "  ?id "  jodZa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;The previous owners had obviously papered over any damp patches. [OALD]
;स्पष्ट रूप से पिछले मालिकों ने नम धब्बों को छुपाया है .
(defrule patch4
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-over_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch4   "  ?id "  XabbA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;There are icy patches on the road. [Cambridge]
;सङक पर बर्फीले चकते हैं .
(defrule patch5
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)(viSeRya-viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch5   "  ?id "  cakawA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;I think their marriage is going through a bad patch. [Cambridge]
;मुझे लगता है कि उनका विवाह बुरे समय से गुज़र रहा है .
(defrule patch6
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 bad|rough|difficult)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch6   "  ?id "  samaya )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;To patch your trouser. [Cambridge]
;पतलून में पैबन्द लगाना .
(defrule patch7
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEbanxa_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch7   "  ?id "  pEbanxa_laga )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;Has he managed to patch things up with her? [Cambridge]
;क्या वो उसके साथ चीजें सुलझा पाया है .
(defrule patch8
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaka  ?noun ?id1)
(samAsa_viSeRya-samAsa_viSeRaNa  ?noun ?id)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sulaJAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " patch.clp  patch8  "  ?id "  " ?id1 "  sulaJAnA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;We sat in a patch of shade under a tree. [OALD]
;हम पेङ के नीचे छाँव में बैठे .
;Note: mng of patch can come.
(defrule patch9
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 shade|cover|shadow|shelter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch9   "  ?id "  -)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;He knows every house in his patch. [OALD]
;वह अपने क्षेत्र में सब कुछ जानता है .
(defrule patch10
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch10   "  ?id "  kRewra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;His pants have patches on the knees. [OALD]
;उसकी पतलून पर घुटनों पर पैबन्द है .
(defrule patch11
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI  ?id ?)(and(kriyA-object  ?verb ?id)(kriyA-over_saMbanXI  ?verb ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEbanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch11   "  ?id "  pEbanxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;Software patch. [MW]
;सोफ्टवेयर का कोड .
(defrule patch12
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 software|computer|program|programming)
(or(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch12   "  ?id "  koda )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;He knows everything that happens on his patch. [MW]
;वह सब कुछ जानता है जो कुछ भी उसके क्षेत्र में होता है .
(defrule patch13
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-on_saMbanXI  ? ?id)(kriyA-in_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch13   "  ?id "  kRewra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-2-2014
;She patched a meal together from what was in the cupboard.  [MW]
;उसने अलमारी में जो कुछ भी था उससे खाना बनाया .
(defrule patch14
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root ?id1 together)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch14   "  ?id "  banA )" crlf))
)

;"patch","V","1.jodZanA"
;They tried to patch the leaking roof.
;After their break up they patched up easily.	(figurative)
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_patch6
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 bad|rough|difficult)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " patch.clp   sub_samA_patch6   "   ?id " samaya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_patch6
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 bad|rough|difficult)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " patch.clp   obj_samA_patch6   "   ?id " samaya )" crlf))
)
