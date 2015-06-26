.class public Lae/com/sun/xml/bind/util/Which;
.super Ljava/lang/Object;
.source "Which.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lae/com/sun/xml/bind/util/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 69
    invoke-static {}, Lae/com/sun/xml/bind/util/SecureLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 73
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
