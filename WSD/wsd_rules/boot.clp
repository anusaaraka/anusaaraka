
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;Did you lock the boot?[oald]
;क्या तुमने गाड़ी की डिग्गी बन्द की
(defrule boot2
(declare (salience 3000))
(id-root ?id boot)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri put|lock)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZI_kI_diggI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boot.clp 	boot2   "  ?id "  gAdZI_kI_diggI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;I'll put the luggage in the boot.[oald]
;मैं गाड़ी की डिग्गी में समान डाल दूँगा
(defrule boot3
(declare (salience 3000))
(id-root ?id boot)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id1 ?id)
(id-word ?id1 luggage)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZI_kI_diggI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boot.clp 	boot3   "  ?id "  gAdZI_kI_diggI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
;He gave the ball a tremendous boot.[oald]
;उसने गेंद को एक बहुत अच्छी लात मारी 
;He gave the ball a good boot.[cambridge]
;उसने गेंद को एक बहुत अच्छी लात मारी 
(defrule boot4
(declare (salience 3000))
(id-root ?id boot)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_1  ?kri ?id1)
(kriyA-object_2  ?kri ?id)
(id-root ?kri give)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri lAwa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " boot.clp 	boot4  "  ?id "  " ?kri "   lAwa_mAra )" crlf))
)


;******************DEFAULT RULES********************8

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 28-Feb-2014
(defrule boot0
(declare (salience 0));salience reduced by Garima Singh
(id-word ?id boots);added by Garima Singh
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boot.clp 	boot0   "  ?id "  bUta )" crlf))
)

(defrule boot1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id boot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAwa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boot.clp 	boot1   "  ?id "  lAwa_mAra )" crlf))
)

;"boot","V","1.lAwa_mAranA"
;Boot the ball towards goalkeeper.
;
;
;LEVEL 
;Headword : boot
;
;*****************Examples*******************************
;
;"boot","N","1.jUwA"-bUta
;She bought a pair of winter boots.
;usane sarxI ke jUwoM kA eka jodZA KarIxA.
;--"2.kAra_meM_sAmAna_raKane_kA_sWAna"-bUta
;You can put the luggage in the boot.
;wuma sAmAna bUta meM dAla xo.
;
;"boot","V","paricAlana_karanA"
;Boot the system
;yanwra(-wanwra)paricAlana kara
;
;'boot' Sabxa ke saBI arWa asambanXa laga rahe hEM. apane Apa meM 'boot' Sabxa
;hinxI kA eka hissA BI ho gayA hE. awaH isako asI rUpa meM liyA jA sakawA
;hE. paranwu kyoMki usake alaga-alaga arWa hE isaliye isameM '`' lagAnA uciwa 
;hogA.
;
;sUwra : bUta`
;


;Hiking boots.
;A pair of black leather boots.
;Cowboy boots.
;I'll put the luggage in the boot.
;Did you lock the boot?
;He gave the ball a tremendous boot.
;He gave the ball a good boot.
