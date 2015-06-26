.class final Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;
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
    name = "StaticAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;",
        ">;"
    }
.end annotation


# instance fields
.field name:Lae/com/sun/xml/bind/v2/runtime/Name;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;)I
    .locals 2
    .param p1, "that"    # Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    .prologue
    .line 123
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/Name;->compareTo(Lae/com/sun/xml/bind/v2/runtime/Name;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->compareTo(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;)I

    move-result v0

    return v0
.end method

.method public set(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 104
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->value:Ljava/lang/String;

    .line 105
    return-void
.end method

.method toDynamicAttribute()Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;
    .locals 6

    .prologue
    .line 112
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-short v0, v2, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUriIndex:S

    .line 114
    .local v0, "nsUriIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 115
    const/4 v1, -0x1

    .line 118
    .local v1, "prefix":I
    :goto_0
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v4, v4, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->value:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 117
    .end local v1    # "prefix":I
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsUriIndex2prefixIndex:[I

    aget v1, v2, v0

    .restart local v1    # "prefix":I
    goto :goto_0
.end method

.method write()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->name:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->value:Ljava/lang/String;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->access$001(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 109
    return-void
.end method
