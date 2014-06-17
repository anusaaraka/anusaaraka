;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 18-03-2014
;This shows that damage was wilful.  ;shiksharthi
;यह दिखाता है कि नुकसान जान-बूझकर किया गया था.
;The present crisis is the result of years of wilful neglect by the council.   ;cald
;वर्तमान संकट परिषद द्वारा वर्षों से जान - बूझकर की गई उपेक्षा का परिणाम है.
(defrule wilful0
(declare (salience 4900))
(id-root ?id wilful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id))
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna-bUJakara_kiyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wilful.clp 	wilful0   "  ?id "  jAna-bUJakara_kiyA_gayA )" crlf)
))

;------------------------default rules---------------------

;@@@ Added by Pramila(BU) on 18-03-2014
;She developed into a wilful, difficult child.  ;cald
;उसका एक जिद्दी,कठिन बच्चे के रूप में विकास हुआ.
(defrule wilful1
(declare (salience 100))
(id-root ?id wilful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jixxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wilful.clp 	wilful1   "  ?id "  jixxI )" crlf)
))


;@@@ Added by Pramila(BU) on 18-03-2014
(defrule wilful2
(declare (salience 0))
(id-root ?id wilful)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jixxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wilful.clp 	wilful2   "  ?id "  jixxI )" crlf)
))
