
(defrule boot0
(declare (salience 5000))
(id-root ?id boot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boot.clp 	boot0   "  ?id "  bUta )" crlf))
)

(defrule boot1
(declare (salience 4900))
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
;Examples --
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
