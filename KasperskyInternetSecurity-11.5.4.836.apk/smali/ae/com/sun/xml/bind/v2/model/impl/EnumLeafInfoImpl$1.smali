.class Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;
.super Ljava/lang/Object;
.source "EnumLeafInfoImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
        "<TT;TC;TF;TM;>;>;"
    }
.end annotation


# instance fields
.field private next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)V
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->firstConstant:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;)Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    .line 267
    .local v0, "r":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    .line 268
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl.1;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;->next()Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl$1;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
