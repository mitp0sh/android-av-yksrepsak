.class final Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;
.super Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;
.source "NamespaceContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredPrefix(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "requirePrefix"    # Z

    .prologue
    .line 566
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const-string p2, "xsi"

    .line 572
    .end local p2    # "suggestion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 568
    .restart local p2    # "suggestion":Ljava/lang/String;
    :cond_1
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string p2, "xs"

    goto :goto_0

    .line 570
    :cond_2
    const-string v0, "http://www.w3.org/2005/05/xmlmime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string p2, "xmime"

    goto :goto_0
.end method
