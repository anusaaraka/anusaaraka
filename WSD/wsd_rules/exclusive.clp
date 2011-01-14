
(defrule exclusive0
(declare (salience 5000))
(id-root ?id exclusive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ananya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exclusive.clp 	exclusive0   "  ?id "  ananya )" crlf))
)

(defrule exclusive1
(declare (salience 4900))
(id-root ?id exclusive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exclusive.clp 	exclusive1   "  ?id "  nivAraka )" crlf))
)

;"exclusive","Adj","1.nivAraka"
;She belongs to an exclusive club.
;
;
;LEVEL 
;Headword : exclusive
;
;Examples --
;
;"exclusive","A","1.viSeRa"
;I gave him exclusive right to use my house.
;apanA Gara iswemAla karane kA mEMne use viSeRa aXikAra xiyA WA. 
;--"2.sImiwa"-apane warIke kA ekamAwra klaba hE-viSeRa pariXi ke BIwara
;The club is very exclusive.
;klaba kI saxasyawA bahuwa sImiwa hE.
;--"3.ananya"-eka xUsare se alaga hEM- xono eka xUsare kI pariXi ke bAhara hEM
;The two plans are mutually exclusive.
;xono yojanAez eka xUsare ke ananya hEM.
;--"4.ko CodZakara/ke awirikwa"
;Five hundred soldiers exclusive of officers were present there.
;APisaras ke awirikwa pAzca sO sipAhI vahAz mOjUxa We. <--pariXi ke bAhara
;--"5.CodZa kara"-ke awirikwa
;The price of this machine is Rs 5000 exclusive of local taxes. 
;isa maSIna kI kImawa 5000 rupaye hE sWAnIya karoM ko CodZakara.
;
;
;Upara xiye uxAharaNoM se EsA lagawA hE ki 'exclusive' ke xo paraspara viroXI
;arWa A rahe hEM , eka arWa 'kisI ko kuCa viSiRta aXikAra xenA' (uxAharaNa 1);
;Ora xUsarA 'kisI ko  kuCa aXikAroM se bAhara raKanA'. kinwu yaxi uxAharaNa-2 xeKeM
;wo 'exclusive' kA arWa spaRta howA hE. isa uxAharaNa meM BI 'viSiRtawA' kA
;arWa hE. kuCa viSeRa logoM ke liye hI klaba hE - janasAmAnya ke liye nahIM. 
;awaH 'exclusive' kA eka arWa viSiRta ho sakawA hE.
;jaba kuCa 'viSiRta' hE wo hara koI usakA hissA nahIM ho sakawA.
;jaba kuCa 'exclusive' howA hE wo kuCa viSiRta loga hI usakI pariXi meM SAmila
;howe hEM bAkI usake bAhara rahawe hEM, isIprakAra uxAharaNa 1. meM 'exclusive
;rights' uxAharaNa 5. meM tEksa 'viSiRta' hEM, mUla xAmoM kI pariXi ke bAhara
;hEM, uxAharaNa 4. meM jaba viSeRa rUpa se javAnoM kI bAwa ho rahI hE wo aXikArI
;unakI pariXi ke bAhara hEM, uxAharaNa wIna meM jaba eka hE wo xUsarA vahAz nahIM
;ho sakawA awaH xono hI viSeRa hEM.
;
;awaH 'exclusive' kA mUlArWa 'viSiRta' hI A rahA hE. isakA sUwra hogA
;
;sUwra : viSiRta{janasAmAnya_nahIM}   
; 
