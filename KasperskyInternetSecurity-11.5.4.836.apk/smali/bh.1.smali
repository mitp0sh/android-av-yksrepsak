.class public final Lbh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 25
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 26
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 30
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "##"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 34
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    invoke-static {v1, p1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 45
    :goto_1
    return-object v0

    .line 38
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 41
    invoke-static {v1, p1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    goto :goto_1

    .line 24
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 45
    goto :goto_1
.end method

.method public static final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 55
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
