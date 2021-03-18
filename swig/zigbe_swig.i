/* -*- c++ -*- */

#define ZIGBE_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "zigbe_swig_doc.i"

%{
#include "zigbe/packet_sink_scapy.h"
#include "zigbe/preamble_prefixer_scapy.h"
%}

%include "zigbe/packet_sink_scapy.h"
GR_SWIG_BLOCK_MAGIC2(zigbe, packet_sink_scapy);
%include "zigbe/preamble_prefixer_scapy.h"
GR_SWIG_BLOCK_MAGIC2(zigbe, preamble_prefixer_scapy);
