.class public Lae/com/sun/xml/bind/v2/runtime/reflect/opt/FieldAccessor_Integer;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "FieldAccessor_Integer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 58
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    iget v0, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_int:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    .end local p1    # "bean":Ljava/lang/Object;
    if-nez p2, :cond_0

    sget v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Const;->default_value_int:I

    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    iput v0, p1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;->f_int:I

    .line 66
    return-void

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
