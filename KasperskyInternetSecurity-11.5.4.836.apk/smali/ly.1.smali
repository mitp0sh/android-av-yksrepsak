.class public final Lly;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/Class;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    iput-wide p2, p0, Lly;->a:J

    .line 27
    iput-object p4, p0, Lly;->b:Ljava/lang/Class;

    .line 28
    return-void
.end method


# virtual methods
.method protected final readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 7

    .prologue
    .line 31
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 35
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    .line 43
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v5

    .line 45
    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No local class for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 38
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lly;->b:Ljava/lang/Class;

    if-ne v2, v1, :cond_2

    iget-wide v1, p0, Lly;->a:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Overriding serialized class version mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v1, "local serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, " stream serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 55
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
