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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;note:run below example with parse 13
;Employees should be fully acquainted with emergency procedures.[oald]
;कर्मचारी एमर्जेंसी कार्यविधि से पूर्ण रूप से परिचित होने चाहिए . 
(defrule acquainted1
(declare (salience 4000))
(id-root ?id acquainted)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id avagawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  acquainted.clp 	acquainted1   "  ?id "  avagawa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;note:run example 1 with parse 12 and example 2 with parse 22 to get the correct relations
;I am well acquainted with her family.[oald]
;मैं उसके परिवार से भली भांती परिचित हूँ
;The students are already acquainted with the work of Shakespeare.[oald]
;विद्यार्थी शेक्सपियर के कार्य से पहले  ही परिचित हैं . 
(defrule acquainted2
(declare (salience 5000))
(id-root ?id acquainted)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI ?id ?id1)
(id-word ?id1 her|him|family|work)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pariciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  acquainted.clp  	acquainted2   "  ?id "  pariciwa )" crlf))
)

;***************************DEFAULT RULES******************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;We got acquainted at the conference .[oald]
;हम सम्मेलन में परिचित हुये . 
(defrule acquainted0
(declare (salience 0))
(id-word ?id acquainted)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pariciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  acquainted.clp  	acquainted0  "  ?id "  pariciwa )" crlf))
)
