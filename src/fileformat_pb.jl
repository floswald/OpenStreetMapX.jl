# Automatically generated by ProtoBuf.jl
# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct Blob <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Blob(; kwargs...)
        obj = new(meta(Blob), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Blob
const __meta_Blob = Ref{ProtoMeta}()
function meta(::Type{Blob})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Blob)
            __meta_Blob[] = target = ProtoMeta(Blob)
            fnum = Int[2,1,3,4,5,6,7]
            allflds = Pair{Symbol,Union{Type,String}}[:raw_size => Int32, :raw => Vector{UInt8}, :zlib_data => Vector{UInt8}, :lzma_data => Vector{UInt8}, :OBSOLETE_bzip2_data => Vector{UInt8}, :lz4_data => Vector{UInt8}, :zstd_data => Vector{UInt8}]
            oneofs = Int[0,1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("data")]
            meta(target, Blob, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Blob[]
    end
end
function Base.getproperty(obj::Blob, name::Symbol)
    if name === :raw_size
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :raw
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :zlib_data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :lzma_data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :OBSOLETE_bzip2_data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :lz4_data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :zstd_data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct BlobHeader <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BlobHeader(; kwargs...)
        obj = new(meta(BlobHeader), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct BlobHeader
const __meta_BlobHeader = Ref{ProtoMeta}()
function meta(::Type{BlobHeader})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BlobHeader)
            __meta_BlobHeader[] = target = ProtoMeta(BlobHeader)
            req = Symbol[:_type,:datasize]
            allflds = Pair{Symbol,Union{Type,String}}[:_type => AbstractString, :indexdata => Vector{UInt8}, :datasize => Int32]
            meta(target, BlobHeader, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BlobHeader[]
    end
end
function Base.getproperty(obj::BlobHeader, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :indexdata
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :datasize
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export Blob, BlobHeader
