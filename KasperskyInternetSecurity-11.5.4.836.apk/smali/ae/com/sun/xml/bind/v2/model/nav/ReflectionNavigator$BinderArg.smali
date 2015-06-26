.class Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;
.super Ljava/lang/Object;
.source "ReflectionNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderArg"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final args:[Ljava/lang/reflect/Type;

.field final params:[Ljava/lang/reflect/TypeVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-class v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/reflect/GenericDeclaration;[Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "decl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "args"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 173
    invoke-interface {p1}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;-><init>([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)V

    .line 174
    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "args"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->params:[Ljava/lang/reflect/TypeVariable;

    .line 168
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->args:[Ljava/lang/reflect/Type;

    .line 169
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method replace(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "v"    # Ljava/lang/reflect/TypeVariable;

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->params:[Ljava/lang/reflect/TypeVariable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->params:[Ljava/lang/reflect/TypeVariable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->args:[Ljava/lang/reflect/Type;

    aget-object p1, v1, v0

    .line 182
    .end local p1    # "v":Ljava/lang/reflect/TypeVariable;
    :cond_0
    return-object p1

    .line 177
    .restart local p1    # "v":Ljava/lang/reflect/TypeVariable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
