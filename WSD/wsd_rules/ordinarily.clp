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

;@@@ Added by Pramila(BU) on 04-04-2014
;Ordinarily we meet at seven o'clock. ;shiksharthi
;आम तौर पर हम सात बजे मिलते हैं.
(defrule ordinarily1
(declare (salience 4900))
(id-root 1 ordinarily)
?mng <-(meaning_to_be_decided 1)
(id-cat_coarse 1 adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 Ama_wOra_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ordinarily.clp 	ordinarily1   "  1 "  Ama_wOra_para )" crlf)
))

;------------------default rules----------------------------------------
;@@@ Added by Pramila(BU) on 04-04-2014
;He performs his duty ordinarily. ;shiksharthi
;वह अपना कर्त्तव्य साधारण ढंग से निभाता है.
(defrule ordinarily2
(declare (salience 100))
(id-root ?id ordinarily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa_DaMga_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ordinarily.clp 	ordinarily2   "  ?id "  sAXAraNa_DaMga_se )" crlf)
))

;@@@ Added by Pramila(BU) on 04-04-2014
(defrule ordinarily3
(declare (salience 0))
(id-root ?id ordinarily)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa_DaMga_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ordinarily.clp 	ordinarily3   "  ?id "  sAXAraNa_DaMga_se )" crlf)
))

