.class public Lae/com/sun/xml/bind/v2/runtime/reflect/opt/MethodAccessor_Ref;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "MethodAccessor_Ref.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 53
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->get_ref()Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    check-cast p2, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->set_ref(Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;)V

    .line 61
    return-void
.end method
