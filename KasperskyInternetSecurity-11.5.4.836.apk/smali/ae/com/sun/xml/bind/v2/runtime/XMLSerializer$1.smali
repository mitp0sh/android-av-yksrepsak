.class Lae/com/sun/xml/bind/v2/runtime/XMLSerializer$1;
.super Ljava/lang/Object;
.source "XMLSerializer.java"

# interfaces
.implements Lae/com/sun/xml/bind/CycleRecoverable$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarshaller()Lae/javax/xml/bind/Marshaller;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->access$000(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    return-object v0
.end method
