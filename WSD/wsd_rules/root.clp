
(defrule root0
(declare (salience 5000))
(id-root ?id root)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  root.clp 	root0   "  ?id "  mUla )" crlf))
)

(defrule root1
(declare (salience 4900))
(id-root ?id root)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  root.clp 	root1   "  ?id "  sWApiwa_kara )" crlf))
)

;"root","VT","1.sWApiwa_kara"
;She always roots the tender saplings very carefully. 
;
;LEVEL 
;
;
;Headword : root
;
;Examples --
;
;"root","N"
;
;--1.jadZa
;roots of some trees are very strong.
;kuCa pedZoM kI jadZe bahuwa majabUwa howI hEM.
;
;--2.waha
;i would like to go to roots of this case .                             
;mEM isa mAmale ke waha waka pahuzcanA cAhawA hUz.
;
;--3.mUla
;ram is the root cause for this incident.
;isa GatanA kA mUla kAraNa rAma hEM.
;
;--4.kanxamUla(jisakI jadZa KAI jAwI hEM)
;some roots are good for health.
;kuCa kanxamUla svAsWya ke lie lABaxAyaka howe hEM.
;
;--5.XAwu
;The root of the word 'killed' is 'kill'
;'killed' Sabxa kI XAwu 'kill' hE
;
;--6.AXAra
;Is there any root for this statement?
;kyA isa vakwavya kA koI AXAra hEM.
;
;yahAz"root"Sabxa kA prayoga alaga alaga saMxarBo meM alaga huA hEM,lekina ina saBI
;vAkyoM meM eka sAmAnya arWa sAmane A rahA hEM.yahAz para inakA arWa AwA hE
;mUla me,yAni kisI bAwa meM,yA kisI kA mUla yA AXAra kyA hEM?isalie sUwra
;ke rUpa meM "mUla"ko leMgeM.
;
;sAre vAkyo kI purnaracanA,
;
;--kuCa pedZoM kI jadZe kAPI majabUwa howI hEM.
;--mEM isa mAmale ke mUla waka pahuzcanA cAhawA hUz.     --- [_jadZa]
;--isa GatanA kA mUla kAraNa rAma hEM.                 <--jadZa]
;--kuCa kanxamUla svAsWya ke lalie lABaxAyaka howe hEM. <--kuCa jadZe jo KAI jAwI hE]
;--kyA isa vakwavya kA koI AXAra hEM. <--mUla
;--kyA isa vakwavya kA koI mUla kAraNa hEM. <--jadZa]
;
;ina vAkyoM ke AXAra para sUwra banegA 
;
;sUwra : jadZa-mUla
;
;
;
;
