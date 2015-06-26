.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/AttributesExImpl;
.super Lae/com/sun/xml/bind/util/AttributesImpl;
.source "AttributesExImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/AttributesEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lae/com/sun/xml/bind/util/AttributesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/AttributesExImpl;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/AttributesExImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
