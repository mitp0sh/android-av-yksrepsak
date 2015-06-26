.class public final Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;
.super Ljava/lang/Object;
.source "ArrayERProperty.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ReceiverImpl"
.end annotation


# instance fields
.field private final offset:I

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;I)V
    .locals 0
    .param p2, "offset"    # I

    .prologue
    .line 208
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty<TBeanT;TListT;TItemT;>.ReceiverImpl;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;->offset:I

    .line 210
    return-void
.end method


# virtual methods
.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty<TBeanT;TListT;TItemT;>.ReceiverImpl;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;->offset:I

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getScope(I)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0, v1, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->add(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Object;)V

    .line 214
    return-void
.end method
