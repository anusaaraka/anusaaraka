
(defrule concern0
(declare (salience 5000))
(id-root ?id concern)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id concerning )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  concern.clp  	concern0   "  ?id "  ke_bAre_meM )" crlf))
)

;"concerning","Prep","1.ke_bAre_meM"
;The Board expressed doubts concerning the bowler's bowlng action.
;
(defrule concern1
(declare (salience 4900))
(id-root ?id concern)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id concerned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMbanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  concern.clp  	concern1   "  ?id "  saMbanXiwa )" crlf))
)

;"concerned","Adj","1.saMbanXiwa/viRaya_meM"
;Concerned relatives rushed to the hospital to see the patient.
;
;
(defrule concern2
(declare (salience 4800))
(id-root ?id concern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concern.clp 	concern2   "  ?id "  cinwA )" crlf))
)

(defrule concern3
(declare (salience 4700))
(id-root ?id concern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concern.clp 	concern3   "  ?id "  cinwiwa_ho )" crlf))
)

;default_sense && category=verb	cinwiwa_kara	0
;"concern","VT","1.cinwiwa_karanA"
;She is very much concerned about her health.
;
;
;LEVEL 
;Headword : "concern"
;
;Examples --
;
;1. There is no cause for concern.
;cinwA kA koI kAraNa nahIM hE.
;2. Our main concern is for her safety.
;usakI surakRA hamArA muKya ciMwA viRaya hE.
;3. This matter does not concern them.
;yaha viRaya unase vAswA nahIM raKawA.  <--unakI cinwA kA viRaya nahIM hE
;4. He is employed in a huge industrial concern.
;vaha eka badZe OXyogika saMsWAna meM kAma para raKA gayA hE.
;
;uparaliKiwa vAkyoM meM "concern" Sabxa ke jo Binna arWa A raheM hEM unameM vAswava meM
;saMbaMXa hEM.
;
;vAkya 1. meM "concern" kA jo arWa "cinwA" A rahA hE Ora vAkya 2. meM jo arWa
;"cinwana viRaya" kA A rahA hE, unameM jo BAva mUlawaH prakata ho rahA hE vaha hE "cinwana viRaya yAni saMkRepa meM 'cinwA' kA". 
;
;vAkya 3. meM "concern" kA jo arWa A rahA hE, vaha hE, "cinwA viRaya se vAswA yA saMbaMXa hone" kA.
;
;vAkya 4. meM BI "concern" kA jo arWa "saMsWAna" A rahA hE, vaha vAkya 3. ke arWa 
;"saMbaMXa" se prApwa kiyA jA sakawA hE. wo Pira, vAkya 4. meM "industrial concern"
;ke saMxarBa meM "concern" kA "uxyoga se saMbaMXavAlA" EsA arWa hama prApwa kara sakawe hEM. paranwu yaha PilahAla 'cinwA' se koI sIXA saMbanXa nahIM xiKA rahA. awaH ise alaga raKA jA sakawA hE.
;
;anwarnihiwa sUwra ;
;
;cinwA -- cinwA viRaya -- viRaya se saMbanXiwa - vAswA 
;Parma
;
;wo "concern" ke lie aba hama sUwra isa prakAra xe sakawe hEM.
;
;sUwra : ciMwA^vAswA/Parma
;
