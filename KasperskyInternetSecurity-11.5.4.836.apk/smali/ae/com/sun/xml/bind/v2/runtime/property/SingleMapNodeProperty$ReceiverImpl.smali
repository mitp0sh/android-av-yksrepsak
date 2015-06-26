.class final Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;
.super Ljava/lang/Object;
.source "SingleMapNodeProperty.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverImpl"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;->index:I

    .line 248
    return-void
.end method


# virtual methods
.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 250
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$ReceiverImpl;->index:I

    aput-object p2, v0, v1

    .line 251
    return-void
.end method
