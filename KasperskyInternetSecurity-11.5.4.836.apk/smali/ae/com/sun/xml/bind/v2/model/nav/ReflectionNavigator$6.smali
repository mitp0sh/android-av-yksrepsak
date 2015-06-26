.class Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;
.super Ljava/lang/Object;
.source "ReflectionNavigator.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getMethodLocation(Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;->this$0:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
