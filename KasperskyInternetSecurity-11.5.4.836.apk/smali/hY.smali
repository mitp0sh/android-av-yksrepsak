.class public final LhY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LhT;


# direct methods
.method public constructor <init>(LhT;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LhY;->a:LhT;

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([Ljava/lang/Object;)[B
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 21
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    .line 25
    :goto_0
    :try_start_1
    array-length v1, p1

    if-ge v5, v1, :cond_e

    .line 26
    aget-object v2, p1, v5

    .line 27
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 32
    :cond_0
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 35
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v3

    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    :cond_1
    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 39
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 40
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 43
    :cond_2
    instance-of v1, v2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 48
    :cond_3
    instance-of v1, v2, Ljava/lang/Character;

    if-eqz v1, :cond_4

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 53
    :cond_4
    instance-of v1, v2, Ljava/lang/Short;

    if-eqz v1, :cond_5

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 55
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 58
    :cond_5
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 59
    const/4 v1, 0x7

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 60
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    move-object v0, v2

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 63
    :cond_6
    instance-of v1, v2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 64
    const/4 v1, 0x6

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 68
    :cond_7
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 69
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 74
    :cond_8
    instance-of v1, v2, LhJ;

    if-eqz v1, :cond_9

    .line 75
    const/16 v1, 0x9

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget-object v8, p0, LhY;->a:LhT;

    move-object v0, v2

    check-cast v0, LhJ;

    move-object v1, v0

    invoke-virtual {v8, v1}, LhT;->b(LhJ;)LhP;

    move-result-object v8

    .line 78
    iget v1, v8, LhP;->a:I

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    iget-boolean v1, v8, LhP;->b:Z

    if-eqz v1, :cond_d

    move v1, v3

    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-boolean v1, v8, LhP;->b:Z

    if-eqz v1, :cond_9

    .line 81
    iget-object v8, p0, LhY;->a:LhT;

    move-object v0, v2

    check-cast v0, LhJ;

    move-object v1, v0

    invoke-virtual {v8, v1}, LhT;->a(LhJ;)V

    .line 84
    :cond_9
    instance-of v1, v2, Ljava/util/Vector;

    if-eqz v1, :cond_a

    .line 85
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LhY;->a([Ljava/lang/Object;)[B

    move-result-object v8

    .line 87
    array-length v1, v8

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 91
    :cond_a
    instance-of v1, v2, Lio;

    if-eqz v1, :cond_b

    .line 92
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LhY;->a([Ljava/lang/Object;)[B

    move-result-object v1

    .line 94
    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    check-cast v2, Lio;

    invoke-virtual {v2}, Lio;->a()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    :cond_c
    move v1, v4

    .line 35
    goto/16 :goto_1

    :cond_d
    move v1, v4

    .line 79
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 102
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :cond_e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
