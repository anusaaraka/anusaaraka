;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;Added 'kriyA-subject' relation and word 'advance' in the list by Garima Singh 1-feb-2014
; She wrote an article attacking the judges and their conduct of the trial.
;उसने जजों कीं पैरवी के ढ़ंग कीं आलोचना करते हुए एक लेख लिखा
;The article advances a new theory to explain changes in the climate.
;लेख जलवायु में परिवर्तन समझाने के लिये एक नया सिद्धान्त प्रस्तुत करता है . 
(defrule article0
(declare (salience 3500))
(id-root ?id article)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id)(kriyA-in_saMbanXI  ?id1 ?id));added '(kriyA-in_saMbanXI  ?id1 ?id)' by Garima Singh
(id-root ?id1 write|read|discuss|publish|describe|advance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  article.clp 	article0   "  ?id "  leKa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;I found the article while I was browsing through some old magazines.[oald]
;मुझे कुछ पुरानी पत्रिकाओं  के पृष्ठ पलटते समय यह लेख मिला. 
(defrule article2
(declare (salience 3500))
(id-root ?id article)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri1 ?id)
(kriyA-samakAlika_kriyA  ?kri1 ?kri2)
(kriyA-through_saMbanXI  ?kri2 ?id1)
(id-root ?id1 book|magazine|newspaper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  article.clp 	article2   "  ?id "  leKa )" crlf))
)


;*******************DEFAULT RULES**************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
(defrule article1
(declare (salience 3500))
(id-root ?id article)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-root ?id1 write|read|discuss|publish|described)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  article.clp 	article1   "  ?id "  vaswu )" crlf))
)

;********************************************************* EXAMPLES **************************************************************************
; She wrote an article attacking the judges and their conduct of the trial.

