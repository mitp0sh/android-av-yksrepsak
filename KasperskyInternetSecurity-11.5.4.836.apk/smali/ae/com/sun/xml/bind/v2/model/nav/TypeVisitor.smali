.class abstract Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;, "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "TP;)TT;"
        }
    .end annotation
.end method

.method protected abstract onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericArrayType;",
            "TP;)TT;"
        }
    .end annotation
.end method

.method protected abstract onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "TP;)TT;"
        }
    .end annotation
.end method

.method protected abstract onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable;",
            "TP;)TT;"
        }
    .end annotation
.end method

.method protected abstract onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/WildcardType;",
            "TP;)TT;"
        }
    .end annotation
.end method

.method public final visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;, "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor<TT;TP;>;"
    .local p2, "param":Ljava/lang/Object;, "TP;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->onClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 58
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 59
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 61
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 62
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 63
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 65
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 68
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_5
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
