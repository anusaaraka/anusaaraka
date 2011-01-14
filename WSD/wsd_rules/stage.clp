
(defrule stage0
(declare (salience 5000))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id staging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBinaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stage.clp  	stage0   "  ?id "  aBinaya )" crlf))
)

;"staging","N","1.aBinaya"
;An imaginative new staging of Macbeth.
;
(defrule stage1
(declare (salience 4900))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 different)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage1   "  ?id "  avasWA )" crlf))
)

(defrule stage2
(declare (salience 4800))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 early)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage2   "  ?id "  avasWA )" crlf))
)

(defrule stage3
(declare (salience 4700))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 earliest)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage3   "  ?id "  avasWA )" crlf))
)

(defrule stage4
(declare (salience 4600))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 earlier)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage4   "  ?id "  avasWA )" crlf))
)

(defrule stage5
(declare (salience 4500))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 various)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage5   "  ?id "  avasWA )" crlf))
)

(defrule stage6
(declare (salience 4400))
(id-root ?id stage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stage.clp 	stage6   "  ?id "  maMca )" crlf))
)

;default_sense && category=noun	raMgamaMca	0
;"stage","N","1.raMgamaMca"
;He is arranging the stage for the play.
;
;
