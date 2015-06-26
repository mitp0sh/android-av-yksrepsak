.class public final Lum;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lum;->a:Ljava/security/SecureRandom;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lum;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lum;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 79
    sget-object v2, Lum;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 214
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :catch_1
    move-exception v0

    .line 221
    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 112
    const/4 v2, 0x0

    .line 199
    :goto_0
    return-object v2

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 118
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAikLAZiT38onp8Ph8Js97fE3uhHJEdaZWQmHZiI4pCqVs/G2C5lYTgAXOPFRR6i5U2w1eUbVdSc6UGUWnDgc4RImbaaHyCVtBILx/xcWkezK1mUA2XUR14tGlnZlb3bV3l/eMl/5v8IEc1fSVkn7ZIIiCULnLsXR6vMOPLOXjWOSR5qJtImG7WJ2vv0V48RTR2eK1uJx3dLftIEB7ubbI6yv+rM/JqHDlUgmIVBshH8qKM7GYbzWUNqtuXxgtBMiiI2r8Xj6f1UltutFaOc/IYD6NVaBRaqybpSTSY3zoJ4QMgmTj2SaNqrYDx9VCXpCkoL1vnk3bdP+yM8CGK53ILwIDAQAB"

    .line 136
    invoke-static {v2}, Lum;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 137
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lum;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 138
    :goto_1
    if-nez v2, :cond_2

    .line 142
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v10, v2

    .line 148
    const/4 v2, 0x0

    .line 151
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 155
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 156
    if-eqz v16, :cond_8

    .line 157
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v11, v2

    .line 163
    :goto_2
    invoke-static {v14, v15}, Lum;->b(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    const/4 v2, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0

    .line 170
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 172
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    if-ge v13, v11, :cond_7

    .line 173
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 175
    invoke-static {v3}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->valueOf(I)Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    move-result-object v3

    .line 176
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 178
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    const/4 v4, 0x0

    .line 180
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 181
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    :cond_4
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    sget-object v2, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    if-ne v3, v2, :cond_5

    if-eqz v10, :cond_6

    .line 189
    :cond_5
    new-instance v2, Lun;

    invoke-direct/range {v2 .. v9}, Lun;-><init>(Lcom/kms/licensing/iapurchase/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_6
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 194
    :catch_1
    move-exception v2

    .line 195
    const-string v3, "Security"

    const-string v4, "JSON exception: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 198
    :cond_7
    invoke-static {v14, v15}, Lum;->a(J)V

    move-object v2, v12

    .line 199
    goto/16 :goto_0

    :cond_8
    move v11, v2

    goto :goto_2
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lum;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method private static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 248
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    const-string v1, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :catch_1
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :catch_2
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Signature exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(J)Z
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lum;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
