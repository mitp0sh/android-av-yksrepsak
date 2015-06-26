.class final Lae/com/sun/xml/bind/v2/model/impl/SecureLoader$2;
.super Ljava/lang/Object;
.source "SecureLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/model/impl/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/SecureLoader$2;->val$c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/SecureLoader$2;->val$c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
