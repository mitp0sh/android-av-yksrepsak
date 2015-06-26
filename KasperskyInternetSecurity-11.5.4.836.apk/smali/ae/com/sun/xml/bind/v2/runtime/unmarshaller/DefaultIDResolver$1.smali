.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;
.super Ljava/lang/Object;
.source "DefaultIDResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->resolve(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->idmap:Ljava/util/HashMap;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
