.class public final Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;
.super Ljava/lang/Object;
.source "ClassTailor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->$assertionsDisabled:Z

    .line 62
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->logger:Ljava/util/logging/Logger;

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs tailor(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 17
    .param p0, "image"    # Ljava/io/InputStream;
    .param p1, "templateClassName"    # Ljava/lang/String;
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p3, "replacements"    # [Ljava/lang/String;

    .prologue
    .line 118
    new-instance v6, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v14, 0x400

    invoke-direct {v1, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 122
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v11, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 126
    .local v8, "l":J
    invoke-virtual {v11, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 129
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 130
    .local v3, "count":S
    invoke-virtual {v11, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 133
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 134
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 135
    .local v12, "tag":B
    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 136
    packed-switch v12, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown constant type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "count":S
    .end local v5    # "i":I
    .end local v8    # "l":J
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .end local v12    # "tag":B
    :catch_0
    move-exception v4

    .line 202
    .local v4, "e":Ljava/io/IOException;
    sget-object v14, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v16, "failed to tailor"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    const/4 v14, 0x0

    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-object v14

    .line 146
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "count":S
    .restart local v5    # "i":I
    .restart local v8    # "l":J
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "tag":B
    :pswitch_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 148
    move-object/from16 v13, p2

    .line 156
    :cond_0
    :goto_2
    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 133
    .end local v13    # "value":Ljava/lang/String;
    :goto_3
    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .restart local v13    # "value":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    move-object/from16 v0, p3

    array-length v14, v0

    if-ge v7, v14, :cond_0

    .line 151
    aget-object v14, p3, v7

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 152
    add-int/lit8 v14, v7, 0x1

    aget-object v13, p3, v14

    .line 153
    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_4

    .line 162
    .end local v7    # "j":I
    .end local v13    # "value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 167
    :pswitch_4
    add-int/lit8 v5, v5, 0x1

    .line 168
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    .line 173
    :pswitch_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v14

    invoke-virtual {v11, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 180
    :pswitch_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 189
    .end local v12    # "tag":B
    :cond_3
    const/16 v14, 0x200

    new-array v2, v14, [B

    .line 191
    .local v2, "buf":[B
    :goto_5
    invoke-virtual {v6, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_4

    .line 192
    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14, v10}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_5

    .line 194
    :cond_4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 195
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 198
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static varargs tailor(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 4
    .param p0, "templateClass"    # Ljava/lang/Class;
    .param p1, "newClassName"    # Ljava/lang/String;
    .param p2, "replacements"    # [Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "vmname":Ljava/lang/String;
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/bytecode/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->tailor(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static toVMClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 68
    sget-boolean v0, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string v0, "Z"

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string v0, "C"

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string v0, "B"

    goto :goto_0

    .line 84
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string v0, "D"

    goto :goto_0

    .line 85
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string v0, "F"

    goto :goto_0

    .line 86
    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string v0, "I"

    goto :goto_0

    .line 87
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string v0, "J"

    goto :goto_0

    .line 88
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string v0, "S"

    goto :goto_0

    .line 90
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
