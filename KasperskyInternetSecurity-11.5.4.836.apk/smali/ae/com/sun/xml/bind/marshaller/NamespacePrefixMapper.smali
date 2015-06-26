.class public abstract Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;
.super Ljava/lang/Object;
.source "NamespacePrefixMapper.java"


# static fields
.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->EMPTY_STRING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextualNamespaceDecls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->EMPTY_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreDeclaredNamespaceUris()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->EMPTY_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public getPreDeclaredNamespaceUris2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->EMPTY_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPreferredPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method
