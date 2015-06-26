.class final Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;
.super Ljava/lang/Object;
.source "C14nXmlOutput.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DynamicAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;",
        ">;"
    }
.end annotation


# instance fields
.field final localName:Ljava/lang/String;

.field final prefix:I

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "prefix"    # I
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->prefix:I

    .line 135
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->localName:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->value:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private getURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->prefix:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->prefix:I

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;)I
    .locals 3
    .param p1, "that"    # Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    .prologue
    .line 145
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 147
    .end local v0    # "r":I
    :goto_0
    return v0

    .restart local v0    # "r":I
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->localName:Ljava/lang/String;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->compareTo(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;)I

    move-result v0

    return v0
.end method
